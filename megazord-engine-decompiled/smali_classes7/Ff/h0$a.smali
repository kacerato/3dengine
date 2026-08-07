.class public final enum LFf/h0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFf/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LFf/h0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LFf/h0$a;

.field public static final enum ERROR:LFf/h0$a;

.field public static final enum WARNING:LFf/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LFf/h0$a;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LFf/h0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/h0$a;->WARNING:LFf/h0$a;

    new-instance v0, LFf/h0$a;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LFf/h0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf/h0$a;->ERROR:LFf/h0$a;

    invoke-static {}, LFf/h0$a;->a()[LFf/h0$a;

    move-result-object v0

    sput-object v0, LFf/h0$a;->$VALUES:[LFf/h0$a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LFf/h0$a;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[LFf/h0$a;
    .locals 2

    sget-object v0, LFf/h0$a;->WARNING:LFf/h0$a;

    sget-object v1, LFf/h0$a;->ERROR:LFf/h0$a;

    filled-new-array {v0, v1}, [LFf/h0$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LFf/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LFf/h0$a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LFf/h0$a;
    .locals 1

    const-class v0, LFf/h0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LFf/h0$a;

    return-object p0
.end method

.method public static values()[LFf/h0$a;
    .locals 1

    sget-object v0, LFf/h0$a;->$VALUES:[LFf/h0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFf/h0$a;

    return-object v0
.end method
