.class public final enum Ll9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll9/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll9/a;

.field public static final enum None:Ll9/a;

.field public static final enum Off:Ll9/a;

.field public static final enum Play:Ll9/a;

.field public static final enum PlayInLoop:Ll9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll9/a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->None:Ll9/a;

    new-instance v0, Ll9/a;

    const-string v1, "Off"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->Off:Ll9/a;

    new-instance v0, Ll9/a;

    const-string v1, "Play"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->Play:Ll9/a;

    new-instance v0, Ll9/a;

    const-string v1, "PlayInLoop"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->PlayInLoop:Ll9/a;

    invoke-static {}, Ll9/a;->a()[Ll9/a;

    move-result-object v0

    sput-object v0, Ll9/a;->$VALUES:[Ll9/a;

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

.method public static synthetic a()[Ll9/a;
    .locals 4

    sget-object v0, Ll9/a;->None:Ll9/a;

    sget-object v1, Ll9/a;->Off:Ll9/a;

    sget-object v2, Ll9/a;->Play:Ll9/a;

    sget-object v3, Ll9/a;->PlayInLoop:Ll9/a;

    filled-new-array {v0, v1, v2, v3}, [Ll9/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ll9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll9/a;

    return-object p0
.end method

.method public static values()[Ll9/a;
    .locals 1

    sget-object v0, Ll9/a;->$VALUES:[Ll9/a;

    invoke-virtual {v0}, [Ll9/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll9/a;

    return-object v0
.end method
