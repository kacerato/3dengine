.class public final enum Lf8/c$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lf8/c$g;

.field public static final enum CloudBuild:Lf8/c$g;

.field public static final enum Community:Lf8/c$g;

.field public static final enum EarnCoins:Lf8/c$g;

.field public static final enum Editor:Lf8/c$g;

.field public static final enum Marketplace:Lf8/c$g;

.field public static final enum OutOfApp:Lf8/c$g;

.field public static final enum Projects:Lf8/c$g;

.field public static final enum Tutorials:Lf8/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf8/c$g;

    const-string v1, "Projects"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->Projects:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "Editor"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->Editor:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "Marketplace"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->Marketplace:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "Community"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->Community:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "Tutorials"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->Tutorials:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "CloudBuild"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->CloudBuild:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "EarnCoins"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->EarnCoins:Lf8/c$g;

    new-instance v0, Lf8/c$g;

    const-string v1, "OutOfApp"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lf8/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf8/c$g;->OutOfApp:Lf8/c$g;

    invoke-static {}, Lf8/c$g;->a()[Lf8/c$g;

    move-result-object v0

    sput-object v0, Lf8/c$g;->$VALUES:[Lf8/c$g;

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

.method public static synthetic a()[Lf8/c$g;
    .locals 8

    sget-object v0, Lf8/c$g;->Projects:Lf8/c$g;

    sget-object v1, Lf8/c$g;->Editor:Lf8/c$g;

    sget-object v2, Lf8/c$g;->Marketplace:Lf8/c$g;

    sget-object v3, Lf8/c$g;->Community:Lf8/c$g;

    sget-object v4, Lf8/c$g;->Tutorials:Lf8/c$g;

    sget-object v5, Lf8/c$g;->CloudBuild:Lf8/c$g;

    sget-object v6, Lf8/c$g;->EarnCoins:Lf8/c$g;

    sget-object v7, Lf8/c$g;->OutOfApp:Lf8/c$g;

    filled-new-array/range {v0 .. v7}, [Lf8/c$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/c$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lf8/c$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/c$g;

    return-object p0
.end method

.method public static values()[Lf8/c$g;
    .locals 1

    sget-object v0, Lf8/c$g;->$VALUES:[Lf8/c$g;

    invoke-virtual {v0}, [Lf8/c$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/c$g;

    return-object v0
.end method
