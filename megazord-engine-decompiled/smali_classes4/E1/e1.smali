.class public final synthetic LE1/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/U;


# instance fields
.field public final a:LQ1/l;


# direct methods
.method public constructor <init>(LQ1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/e1;->a:LQ1/l;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, LE1/e1;->a:LQ1/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQ1/l;->e(Ljava/lang/Object;)Z

    return-void
.end method
