.class public final enum Ln6/b$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln6/b$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln6/b$k;

.field public static final enum DonotMatter:Ln6/b$k;

.field public static final enum IsTemplate:Ln6/b$k;

.field public static final enum NotTemplate:Ln6/b$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln6/b$k;

    const-string v1, "DonotMatter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln6/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/b$k;->DonotMatter:Ln6/b$k;

    new-instance v0, Ln6/b$k;

    const-string v1, "IsTemplate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln6/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/b$k;->IsTemplate:Ln6/b$k;

    new-instance v0, Ln6/b$k;

    const-string v1, "NotTemplate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln6/b$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/b$k;->NotTemplate:Ln6/b$k;

    invoke-static {}, Ln6/b$k;->a()[Ln6/b$k;

    move-result-object v0

    sput-object v0, Ln6/b$k;->$VALUES:[Ln6/b$k;

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

.method public static synthetic a()[Ln6/b$k;
    .locals 3

    sget-object v0, Ln6/b$k;->DonotMatter:Ln6/b$k;

    sget-object v1, Ln6/b$k;->IsTemplate:Ln6/b$k;

    sget-object v2, Ln6/b$k;->NotTemplate:Ln6/b$k;

    filled-new-array {v0, v1, v2}, [Ln6/b$k;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln6/b$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ln6/b$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln6/b$k;

    return-object p0
.end method

.method public static values()[Ln6/b$k;
    .locals 1

    sget-object v0, Ln6/b$k;->$VALUES:[Ln6/b$k;

    invoke-virtual {v0}, [Ln6/b$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/b$k;

    return-object v0
.end method
