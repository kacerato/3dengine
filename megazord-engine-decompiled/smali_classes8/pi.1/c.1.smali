.class public Lpi/c;
.super Lpi/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpi/C;)V
    .locals 0

    invoke-interface {p1, p0}, Lpi/C;->u(Lpi/c;)V

    return-void
.end method
