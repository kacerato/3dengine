.class public final enum Lth/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lth/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lth/b$a;

.field public static final enum Bottom:Lth/b$a;

.field public static final enum Left:Lth/b$a;

.field public static final enum Right:Lth/b$a;

.field public static final enum Top:Lth/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lth/b$a;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lth/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$a;->Left:Lth/b$a;

    new-instance v0, Lth/b$a;

    const-string v1, "Top"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lth/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$a;->Top:Lth/b$a;

    new-instance v0, Lth/b$a;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lth/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$a;->Right:Lth/b$a;

    new-instance v0, Lth/b$a;

    const-string v1, "Bottom"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lth/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth/b$a;->Bottom:Lth/b$a;

    invoke-static {}, Lth/b$a;->a()[Lth/b$a;

    move-result-object v0

    sput-object v0, Lth/b$a;->$VALUES:[Lth/b$a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lth/b$a;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Lth/b$a;
    .locals 4

    sget-object v0, Lth/b$a;->Left:Lth/b$a;

    sget-object v1, Lth/b$a;->Top:Lth/b$a;

    sget-object v2, Lth/b$a;->Right:Lth/b$a;

    sget-object v3, Lth/b$a;->Bottom:Lth/b$a;

    filled-new-array {v0, v1, v2, v3}, [Lth/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lth/b$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lth/b$a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lth/b$a;
    .locals 1

    const-class v0, Lth/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lth/b$a;

    return-object p0
.end method

.method public static values()[Lth/b$a;
    .locals 1

    sget-object v0, Lth/b$a;->$VALUES:[Lth/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lth/b$a;

    return-object v0
.end method
