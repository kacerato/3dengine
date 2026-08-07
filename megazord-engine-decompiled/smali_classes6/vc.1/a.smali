.class public final enum Lvc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvc/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvc/a;

.field public static final enum ENVIRONMENT:Lvc/a;

.field public static final enum SSR:Lvc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvc/a;

    const-string v1, "ENVIRONMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvc/a;->ENVIRONMENT:Lvc/a;

    new-instance v0, Lvc/a;

    const-string v1, "SSR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lvc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvc/a;->SSR:Lvc/a;

    invoke-static {}, Lvc/a;->a()[Lvc/a;

    move-result-object v0

    sput-object v0, Lvc/a;->$VALUES:[Lvc/a;

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

.method public static synthetic a()[Lvc/a;
    .locals 2

    sget-object v0, Lvc/a;->ENVIRONMENT:Lvc/a;

    sget-object v1, Lvc/a;->SSR:Lvc/a;

    filled-new-array {v0, v1}, [Lvc/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lvc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvc/a;

    return-object p0
.end method

.method public static values()[Lvc/a;
    .locals 1

    sget-object v0, Lvc/a;->$VALUES:[Lvc/a;

    invoke-virtual {v0}, [Lvc/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvc/a;

    return-object v0
.end method
