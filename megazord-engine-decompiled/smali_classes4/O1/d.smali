.class public LO1/d;
.super LO1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LO1/e;-><init>()V

    return-void
.end method


# virtual methods
.method public T(LO1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
