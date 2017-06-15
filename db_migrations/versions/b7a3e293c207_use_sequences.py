"""use sequences

Revision ID: b7a3e293c207
Revises: 0bde60e6657f
Create Date: 2017-06-15 11:43:35.574932

"""

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'b7a3e293c207'
down_revision = '0bde60e6657f'
branch_labels = None
depends_on = None


# Create Postgresql sequences

def create_seq(name):
    op.execute(sa.schema.CreateSequence(sa.Sequence(name)))


def drop_seq(name):
    op.execute(sa.schema.DropSequence(name))


def upgrade():
    create_seq('patient_num_seq')
    create_seq('encounter_num_seq')
    op.alter_column("encounter_mapping", "encounter_num",
                    nullable=False, server_default=sa.text("nextval('encounter_num_seq'::regclass)"))
    op.alter_column("patient_mapping", "patient_num",
                    nullable=False, server_default=sa.text("nextval('patient_num_seq'::regclass)"))


def downgrade():
    op.alter_column("encounter_mapping", "encounter_num",
                    nullable=True, server_default=None)
    op.alter_column("patient_mapping", "patient_num",
                    nullable=True, server_default=None)
    drop_seq('patient_num_seq')
    drop_seq('encounter_num_seq')
