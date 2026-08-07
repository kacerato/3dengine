.class public final synthetic LB3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/b;


# instance fields
.field public final synthetic a:Lf3/g;


# direct methods
.method public synthetic constructor <init>(Lf3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB3/e;->a:Lf3/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LB3/e;->a:Lf3/g;

    invoke-static {v0}, Lcom/google/firebase/installations/a;->g(Lf3/g;)LF3/b;

    move-result-object v0

    return-object v0
.end method
