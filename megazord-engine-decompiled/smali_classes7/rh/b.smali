.class public final enum Lrh/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrh/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lrh/b;

.field public static final enum BUTT:Lrh/b;

.field public static final enum ROUND:Lrh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrh/b;

    const-string v1, "ROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrh/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrh/b;->ROUND:Lrh/b;

    new-instance v0, Lrh/b;

    const-string v1, "BUTT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrh/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrh/b;->BUTT:Lrh/b;

    invoke-static {}, Lrh/b;->a()[Lrh/b;

    move-result-object v0

    sput-object v0, Lrh/b;->$VALUES:[Lrh/b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lrh/b;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lrh/b;
    .locals 2

    sget-object v0, Lrh/b;->ROUND:Lrh/b;

    sget-object v1, Lrh/b;->BUTT:Lrh/b;

    filled-new-array {v0, v1}, [Lrh/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lrh/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lrh/b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrh/b;
    .locals 1

    const-class v0, Lrh/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrh/b;

    return-object p0
.end method

.method public static values()[Lrh/b;
    .locals 1

    sget-object v0, Lrh/b;->$VALUES:[Lrh/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrh/b;

    return-object v0
.end method
