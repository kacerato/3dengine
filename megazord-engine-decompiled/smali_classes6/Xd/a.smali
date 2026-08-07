.class public final LXd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LXd/a$a;,
        LXd/a$b;
    }
.end annotation


# static fields
.field public static final b:LXd/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:LXd/a$b;


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LXd/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LXd/a$b;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LXd/a;->c:LXd/a$b;

    new-instance v0, LXd/a$a;

    invoke-direct {v0}, LXd/a$a;-><init>()V

    invoke-virtual {v0}, LXd/a$a;->c()LXd/a;

    move-result-object v0

    sput-object v0, LXd/a;->b:LXd/a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXd/a;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LXd/a;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic a()LXd/a;
    .locals 1

    sget-object v0, LXd/a;->b:LXd/a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LXd/a;->a:Lorg/json/JSONObject;

    const-string v1, "origin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerOptions.getString(Builder.ORIGIN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LXd/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerOptions.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
