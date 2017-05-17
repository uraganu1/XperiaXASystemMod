.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "StandardSystemProperty.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "java.lang.System#getProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/StandardSystemProperty;

.field public static final enum FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_DIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_NAME:Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VERSION"

    .line 33
    const-string/jumbo v2, "java.version"

    .line 32
    invoke-direct {v0, v1, v4, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 35
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VENDOR"

    .line 36
    const-string/jumbo v2, "java.vendor"

    .line 35
    invoke-direct {v0, v1, v5, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 38
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VENDOR_URL"

    .line 39
    const-string/jumbo v2, "java.vendor.url"

    .line 38
    invoke-direct {v0, v1, v6, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    .line 41
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_HOME"

    .line 42
    const-string/jumbo v2, "java.home"

    .line 41
    invoke-direct {v0, v1, v7, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 44
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_SPECIFICATION_VERSION"

    .line 45
    const-string/jumbo v2, "java.vm.specification.version"

    .line 44
    invoke-direct {v0, v1, v8, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 47
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_SPECIFICATION_VENDOR"

    .line 48
    const-string/jumbo v2, "java.vm.specification.vendor"

    .line 47
    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 50
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_SPECIFICATION_NAME"

    .line 51
    const-string/jumbo v2, "java.vm.specification.name"

    .line 50
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 53
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_VERSION"

    .line 54
    const-string/jumbo v2, "java.vm.version"

    .line 53
    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 56
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_VENDOR"

    .line 57
    const-string/jumbo v2, "java.vm.vendor"

    .line 56
    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 59
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_VM_NAME"

    .line 60
    const-string/jumbo v2, "java.vm.name"

    .line 59
    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 62
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_SPECIFICATION_VERSION"

    .line 63
    const-string/jumbo v2, "java.specification.version"

    .line 62
    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 65
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_SPECIFICATION_VENDOR"

    .line 66
    const-string/jumbo v2, "java.specification.vendor"

    .line 65
    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 68
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_SPECIFICATION_NAME"

    .line 69
    const-string/jumbo v2, "java.specification.name"

    .line 68
    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 71
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_CLASS_VERSION"

    .line 72
    const-string/jumbo v2, "java.class.version"

    .line 71
    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 74
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_CLASS_PATH"

    .line 75
    const-string/jumbo v2, "java.class.path"

    .line 74
    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 77
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_LIBRARY_PATH"

    .line 78
    const-string/jumbo v2, "java.library.path"

    .line 77
    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 80
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_IO_TMPDIR"

    .line 81
    const-string/jumbo v2, "java.io.tmpdir"

    .line 80
    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    .line 83
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_COMPILER"

    .line 84
    const-string/jumbo v2, "java.compiler"

    .line 83
    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    .line 86
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "JAVA_EXT_DIRS"

    .line 87
    const-string/jumbo v2, "java.ext.dirs"

    .line 86
    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    .line 89
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "OS_NAME"

    .line 90
    const-string/jumbo v2, "os.name"

    .line 89
    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 92
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "OS_ARCH"

    .line 93
    const-string/jumbo v2, "os.arch"

    .line 92
    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    .line 95
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "OS_VERSION"

    .line 96
    const-string/jumbo v2, "os.version"

    .line 95
    const/16 v3, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 98
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "FILE_SEPARATOR"

    .line 99
    const-string/jumbo v2, "file.separator"

    .line 98
    const/16 v3, 0x16

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 101
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "PATH_SEPARATOR"

    .line 102
    const-string/jumbo v2, "path.separator"

    .line 101
    const/16 v3, 0x17

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 104
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "LINE_SEPARATOR"

    .line 105
    const-string/jumbo v2, "line.separator"

    .line 104
    const/16 v3, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 107
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "USER_NAME"

    .line 108
    const-string/jumbo v2, "user.name"

    .line 107
    const/16 v3, 0x19

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 110
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "USER_HOME"

    .line 111
    const-string/jumbo v2, "user.home"

    .line 110
    const/16 v3, 0x1a

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 113
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string/jumbo v1, "USER_DIR"

    .line 114
    const-string/jumbo v2, "user.dir"

    .line 113
    const/16 v3, 0x1b

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    .line 30
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/google/common/base/StandardSystemProperty;

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
