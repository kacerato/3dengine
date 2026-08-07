.class public Lii/c;
.super Lpi/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lii/c$a;
    }
.end annotation


# instance fields
.field public f:Z

.field public g:Lii/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/g;-><init>()V

    return-void
.end method


# virtual methods
.method public p()Lii/c$a;
    .locals 1

    iget-object v0, p0, Lii/c;->g:Lii/c$a;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lii/c;->f:Z

    return v0
.end method

.method public r(Lii/c$a;)V
    .locals 0

    iput-object p1, p0, Lii/c;->g:Lii/c$a;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lii/c;->f:Z

    return-void
.end method
