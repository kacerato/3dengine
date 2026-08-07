.class public final enum Lyi/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyi/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lyi/c$c;

.field public static final enum MAX:Lyi/c$c;

.field public static final enum MIN:Lyi/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyi/c$c;

    const-string v1, "MIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyi/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/c$c;->MIN:Lyi/c$c;

    new-instance v0, Lyi/c$c;

    const-string v1, "MAX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lyi/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyi/c$c;->MAX:Lyi/c$c;

    invoke-static {}, Lyi/c$c;->a()[Lyi/c$c;

    move-result-object v0

    sput-object v0, Lyi/c$c;->$VALUES:[Lyi/c$c;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lyi/c$c;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lyi/c$c;
    .locals 2

    sget-object v0, Lyi/c$c;->MIN:Lyi/c$c;

    sget-object v1, Lyi/c$c;->MAX:Lyi/c$c;

    filled-new-array {v0, v1}, [Lyi/c$c;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lyi/c$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyi/c$c;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyi/c$c;
    .locals 1

    const-class v0, Lyi/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyi/c$c;

    return-object p0
.end method

.method public static values()[Lyi/c$c;
    .locals 1

    sget-object v0, Lyi/c$c;->$VALUES:[Lyi/c$c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyi/c$c;

    return-object v0
.end method
