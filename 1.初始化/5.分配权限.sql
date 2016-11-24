USE TeachManagement
GO

-- WARNING: The ALL permission is deprecated and maintained only for compatibility. It DOES NOT imply ALL permissions defined on the entity.
GRANT ALL PRIVILEGES ON Student TO Dean
GRANT ALL PRIVILEGES ON Course TO Dean
GRANT ALL PRIVILEGES ON Teacher TO Dean
GRANT ALL PRIVILEGES ON TeachCourse TO Dean
GO

-- ERROR: Sub-entity lists (such as column or security expressions) cannot be specified for entity-level permissions.
-- 不允许为子对象（比如Enrollment.Sno、Enrollment.Cno）单独分配对象级（SELECT、ALTER等）别权限，故此，将SELECT(Sno,Cno)改为SELECT
GRANT SELECT, INSERT, UPDATE(Sno,Cno) ON Enrollment TO Student
GO

GRANT SELECT, UPDATE(Grade) ON Enrollment TO Teacher
GO
