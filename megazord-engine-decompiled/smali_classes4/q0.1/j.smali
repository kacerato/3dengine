.class public Lq0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LB0/a;

.field public final c:LB0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB0/a;LB0/a;)V
    .locals 0
    .param p2    # LB0/a;
        .annotation build LB0/h;
        .end annotation
    .end param
    .param p3    # LB0/a;
        .annotation build LB0/b;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lq0/j;->b:LB0/a;

    iput-object p3, p0, Lq0/j;->c:LB0/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lq0/i;
    .locals 3

    iget-object v0, p0, Lq0/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lq0/j;->b:LB0/a;

    iget-object v2, p0, Lq0/j;->c:LB0/a;

    invoke-static {v0, v1, v2, p1}, Lq0/i;->b(Landroid/content/Context;LB0/a;LB0/a;Ljava/lang/String;)Lq0/i;

    move-result-object p1

    return-object p1
.end method
