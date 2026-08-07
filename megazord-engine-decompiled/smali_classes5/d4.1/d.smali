.class public final enum Ld4/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld4/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ld4/d;

.field public static final enum Done:Ld4/d;

.field public static final enum Downloading:Ld4/d;

.field public static final enum Failed:Ld4/d;

.field public static final enum Uploading:Ld4/d;

.field public static final enum Waiting:Ld4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ld4/d;

    const-string v1, "Waiting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld4/d;->Waiting:Ld4/d;

    new-instance v0, Ld4/d;

    const-string v1, "Uploading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld4/d;->Uploading:Ld4/d;

    new-instance v0, Ld4/d;

    const-string v1, "Downloading"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld4/d;->Downloading:Ld4/d;

    new-instance v0, Ld4/d;

    const-string v1, "Failed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ld4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld4/d;->Failed:Ld4/d;

    new-instance v0, Ld4/d;

    const-string v1, "Done"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ld4/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld4/d;->Done:Ld4/d;

    invoke-static {}, Ld4/d;->a()[Ld4/d;

    move-result-object v0

    sput-object v0, Ld4/d;->$VALUES:[Ld4/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Ld4/d;
    .locals 5

    sget-object v0, Ld4/d;->Waiting:Ld4/d;

    sget-object v1, Ld4/d;->Uploading:Ld4/d;

    sget-object v2, Ld4/d;->Downloading:Ld4/d;

    sget-object v3, Ld4/d;->Failed:Ld4/d;

    sget-object v4, Ld4/d;->Done:Ld4/d;

    filled-new-array {v0, v1, v2, v3, v4}, [Ld4/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ld4/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ld4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld4/d;

    return-object p0
.end method

.method public static values()[Ld4/d;
    .locals 1

    sget-object v0, Ld4/d;->$VALUES:[Ld4/d;

    invoke-virtual {v0}, [Ld4/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld4/d;

    return-object v0
.end method
