.class public final enum Lb6/e$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb6/e$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb6/e$k;

.field public static final enum X:Lb6/e$k;

.field public static final enum Y:Lb6/e$k;

.field public static final enum Z:Lb6/e$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb6/e$k;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb6/e$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb6/e$k;->X:Lb6/e$k;

    new-instance v0, Lb6/e$k;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lb6/e$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb6/e$k;->Y:Lb6/e$k;

    new-instance v0, Lb6/e$k;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lb6/e$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb6/e$k;->Z:Lb6/e$k;

    invoke-static {}, Lb6/e$k;->a()[Lb6/e$k;

    move-result-object v0

    sput-object v0, Lb6/e$k;->$VALUES:[Lb6/e$k;

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

.method public static synthetic a()[Lb6/e$k;
    .locals 3

    sget-object v0, Lb6/e$k;->X:Lb6/e$k;

    sget-object v1, Lb6/e$k;->Y:Lb6/e$k;

    sget-object v2, Lb6/e$k;->Z:Lb6/e$k;

    filled-new-array {v0, v1, v2}, [Lb6/e$k;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb6/e$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lb6/e$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb6/e$k;

    return-object p0
.end method

.method public static values()[Lb6/e$k;
    .locals 1

    sget-object v0, Lb6/e$k;->$VALUES:[Lb6/e$k;

    invoke-virtual {v0}, [Lb6/e$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb6/e$k;

    return-object v0
.end method
