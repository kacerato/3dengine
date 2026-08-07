.class public final enum Lag/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.8"
.end annotation

.annotation build Lag/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lag/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lag/b;

.field public static final enum CONTINUE:Lag/b;

.field public static final enum SKIP_SUBTREE:Lag/b;

.field public static final enum TERMINATE:Lag/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lag/b;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lag/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/b;->CONTINUE:Lag/b;

    new-instance v0, Lag/b;

    const-string v1, "SKIP_SUBTREE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lag/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/b;->SKIP_SUBTREE:Lag/b;

    new-instance v0, Lag/b;

    const-string v1, "TERMINATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lag/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag/b;->TERMINATE:Lag/b;

    invoke-static {}, Lag/b;->a()[Lag/b;

    move-result-object v0

    sput-object v0, Lag/b;->$VALUES:[Lag/b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lag/b;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lag/b;
    .locals 3

    sget-object v0, Lag/b;->CONTINUE:Lag/b;

    sget-object v1, Lag/b;->SKIP_SUBTREE:Lag/b;

    sget-object v2, Lag/b;->TERMINATE:Lag/b;

    filled-new-array {v0, v1, v2}, [Lag/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lag/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lag/b;
    .locals 1

    const-class v0, Lag/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lag/b;

    return-object p0
.end method

.method public static values()[Lag/b;
    .locals 1

    sget-object v0, Lag/b;->$VALUES:[Lag/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag/b;

    return-object v0
.end method
