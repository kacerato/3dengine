.class public final LJ0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ0/q;


# instance fields
.field public final synthetic a:LJ0/b;


# direct methods
.method public constructor <init>(LJ0/b;)V
    .locals 0

    iput-object p1, p0, LJ0/o;->a:LJ0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/f1;->g(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/G1;

    move-result-object p1

    iget-object v0, p0, LJ0/o;->a:LJ0/b;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/G1;->U0(LJ0/b;)LJ0/c;

    move-result-object p1

    invoke-static {p1}, LJ0/r;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LJ0/c;->B()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
