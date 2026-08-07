.class public final synthetic Lf3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/b;


# instance fields
.field public final synthetic a:Lf3/g;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lf3/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/e;->a:Lf3/g;

    iput-object p2, p0, Lf3/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf3/e;->a:Lf3/g;

    iget-object v1, p0, Lf3/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lf3/g;->b(Lf3/g;Landroid/content/Context;)LI3/a;

    move-result-object v0

    return-object v0
.end method
