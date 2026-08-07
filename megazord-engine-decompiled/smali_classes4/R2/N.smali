.class public final enum LR2/N;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LR2/N;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LR2/N;

.field public static final enum FILE_SEPARATOR:LR2/N;

.field public static final enum JAVA_CLASS_PATH:LR2/N;

.field public static final enum JAVA_CLASS_VERSION:LR2/N;

.field public static final enum JAVA_COMPILER:LR2/N;

.field public static final enum JAVA_EXT_DIRS:LR2/N;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_HOME:LR2/N;

.field public static final enum JAVA_IO_TMPDIR:LR2/N;

.field public static final enum JAVA_LIBRARY_PATH:LR2/N;

.field public static final enum JAVA_SPECIFICATION_NAME:LR2/N;

.field public static final enum JAVA_SPECIFICATION_VENDOR:LR2/N;

.field public static final enum JAVA_SPECIFICATION_VERSION:LR2/N;

.field public static final enum JAVA_VENDOR:LR2/N;

.field public static final enum JAVA_VENDOR_URL:LR2/N;

.field public static final enum JAVA_VERSION:LR2/N;

.field public static final enum JAVA_VM_NAME:LR2/N;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:LR2/N;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:LR2/N;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:LR2/N;

.field public static final enum JAVA_VM_VENDOR:LR2/N;

.field public static final enum JAVA_VM_VERSION:LR2/N;

.field public static final enum LINE_SEPARATOR:LR2/N;

.field public static final enum OS_ARCH:LR2/N;

.field public static final enum OS_NAME:LR2/N;

.field public static final enum OS_VERSION:LR2/N;

.field public static final enum PATH_SEPARATOR:LR2/N;

.field public static final enum USER_DIR:LR2/N;

.field public static final enum USER_HOME:LR2/N;

.field public static final enum USER_NAME:LR2/N;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LR2/N;

    const/4 v1, 0x0

    const-string v2, "java.version"

    const-string v3, "JAVA_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x1

    const-string v2, "java.vendor"

    const-string v3, "JAVA_VENDOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VENDOR:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x2

    const-string v2, "java.vendor.url"

    const-string v3, "JAVA_VENDOR_URL"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VENDOR_URL:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x3

    const-string v2, "java.home"

    const-string v3, "JAVA_HOME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_HOME:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x4

    const-string v2, "java.vm.specification.version"

    const-string v3, "JAVA_VM_SPECIFICATION_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_SPECIFICATION_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x5

    const-string v2, "java.vm.specification.vendor"

    const-string v3, "JAVA_VM_SPECIFICATION_VENDOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_SPECIFICATION_VENDOR:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x6

    const-string v2, "java.vm.specification.name"

    const-string v3, "JAVA_VM_SPECIFICATION_NAME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_SPECIFICATION_NAME:LR2/N;

    new-instance v0, LR2/N;

    const/4 v1, 0x7

    const-string v2, "java.vm.version"

    const-string v3, "JAVA_VM_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x8

    const-string v2, "java.vm.vendor"

    const-string v3, "JAVA_VM_VENDOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_VENDOR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x9

    const-string v2, "java.vm.name"

    const-string v3, "JAVA_VM_NAME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_VM_NAME:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xa

    const-string v2, "java.specification.version"

    const-string v3, "JAVA_SPECIFICATION_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_SPECIFICATION_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xb

    const-string v2, "java.specification.vendor"

    const-string v3, "JAVA_SPECIFICATION_VENDOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_SPECIFICATION_VENDOR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xc

    const-string v2, "java.specification.name"

    const-string v3, "JAVA_SPECIFICATION_NAME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_SPECIFICATION_NAME:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xd

    const-string v2, "java.class.version"

    const-string v3, "JAVA_CLASS_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_CLASS_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xe

    const-string v2, "java.class.path"

    const-string v3, "JAVA_CLASS_PATH"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_CLASS_PATH:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0xf

    const-string v2, "java.library.path"

    const-string v3, "JAVA_LIBRARY_PATH"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_LIBRARY_PATH:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x10

    const-string v2, "java.io.tmpdir"

    const-string v3, "JAVA_IO_TMPDIR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_IO_TMPDIR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x11

    const-string v2, "java.compiler"

    const-string v3, "JAVA_COMPILER"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_COMPILER:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x12

    const-string v2, "java.ext.dirs"

    const-string v3, "JAVA_EXT_DIRS"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->JAVA_EXT_DIRS:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x13

    const-string v2, "os.name"

    const-string v3, "OS_NAME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->OS_NAME:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x14

    const-string v2, "os.arch"

    const-string v3, "OS_ARCH"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->OS_ARCH:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x15

    const-string v2, "os.version"

    const-string v3, "OS_VERSION"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->OS_VERSION:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x16

    const-string v2, "file.separator"

    const-string v3, "FILE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->FILE_SEPARATOR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x17

    const-string v2, "path.separator"

    const-string v3, "PATH_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->PATH_SEPARATOR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x18

    const-string v2, "line.separator"

    const-string v3, "LINE_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->LINE_SEPARATOR:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x19

    const-string v2, "user.name"

    const-string v3, "USER_NAME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->USER_NAME:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x1a

    const-string v2, "user.home"

    const-string v3, "USER_HOME"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->USER_HOME:LR2/N;

    new-instance v0, LR2/N;

    const/16 v1, 0x1b

    const-string v2, "user.dir"

    const-string v3, "USER_DIR"

    invoke-direct {v0, v3, v1, v2}, LR2/N;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LR2/N;->USER_DIR:LR2/N;

    invoke-static {}, LR2/N;->a()[LR2/N;

    move-result-object v0

    sput-object v0, LR2/N;->$VALUES:[LR2/N;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LR2/N;->key:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[LR2/N;
    .locals 28

    sget-object v0, LR2/N;->JAVA_VERSION:LR2/N;

    sget-object v1, LR2/N;->JAVA_VENDOR:LR2/N;

    sget-object v2, LR2/N;->JAVA_VENDOR_URL:LR2/N;

    sget-object v3, LR2/N;->JAVA_HOME:LR2/N;

    sget-object v4, LR2/N;->JAVA_VM_SPECIFICATION_VERSION:LR2/N;

    sget-object v5, LR2/N;->JAVA_VM_SPECIFICATION_VENDOR:LR2/N;

    sget-object v6, LR2/N;->JAVA_VM_SPECIFICATION_NAME:LR2/N;

    sget-object v7, LR2/N;->JAVA_VM_VERSION:LR2/N;

    sget-object v8, LR2/N;->JAVA_VM_VENDOR:LR2/N;

    sget-object v9, LR2/N;->JAVA_VM_NAME:LR2/N;

    sget-object v10, LR2/N;->JAVA_SPECIFICATION_VERSION:LR2/N;

    sget-object v11, LR2/N;->JAVA_SPECIFICATION_VENDOR:LR2/N;

    sget-object v12, LR2/N;->JAVA_SPECIFICATION_NAME:LR2/N;

    sget-object v13, LR2/N;->JAVA_CLASS_VERSION:LR2/N;

    sget-object v14, LR2/N;->JAVA_CLASS_PATH:LR2/N;

    sget-object v15, LR2/N;->JAVA_LIBRARY_PATH:LR2/N;

    sget-object v16, LR2/N;->JAVA_IO_TMPDIR:LR2/N;

    sget-object v17, LR2/N;->JAVA_COMPILER:LR2/N;

    sget-object v18, LR2/N;->JAVA_EXT_DIRS:LR2/N;

    sget-object v19, LR2/N;->OS_NAME:LR2/N;

    sget-object v20, LR2/N;->OS_ARCH:LR2/N;

    sget-object v21, LR2/N;->OS_VERSION:LR2/N;

    sget-object v22, LR2/N;->FILE_SEPARATOR:LR2/N;

    sget-object v23, LR2/N;->PATH_SEPARATOR:LR2/N;

    sget-object v24, LR2/N;->LINE_SEPARATOR:LR2/N;

    sget-object v25, LR2/N;->USER_NAME:LR2/N;

    sget-object v26, LR2/N;->USER_HOME:LR2/N;

    sget-object v27, LR2/N;->USER_DIR:LR2/N;

    filled-new-array/range {v0 .. v27}, [LR2/N;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LR2/N;
    .locals 1

    const-class v0, LR2/N;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/N;

    return-object p0
.end method

.method public static values()[LR2/N;
    .locals 1

    sget-object v0, LR2/N;->$VALUES:[LR2/N;

    invoke-virtual {v0}, [LR2/N;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/N;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR2/N;->key:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, LR2/N;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, LR2/N;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LR2/N;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
