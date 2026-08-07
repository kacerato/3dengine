.class public abstract LM0/s;
.super LM0/q;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/auth/t;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LM0/q;-><init>(ILM0/p;)V

    new-instance p1, LM0/r;

    invoke-direct {p1, p0}, LM0/r;-><init>(LM0/s;)V

    iput-object p1, p0, LM0/s;->e:Lcom/google/android/gms/internal/auth/t;

    return-void
.end method
