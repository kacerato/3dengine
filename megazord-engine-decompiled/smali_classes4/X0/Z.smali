.class public final LX0/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX0/f$b;


# instance fields
.field public final synthetic c:LU0/k;


# direct methods
.method public constructor <init>(LU0/k;)V
    .locals 0

    iput-object p1, p0, LX0/Z;->c:LU0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(LS0/c;)V
    .locals 1
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LX0/Z;->c:LU0/k;

    invoke-interface {v0, p1}, LU0/k;->e(LS0/c;)V

    return-void
.end method
