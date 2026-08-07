.class public abstract Lx0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lr0/h;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lz0/d;Ly0/g;LB0/a;)Ly0/y;
    .locals 0
    .param p3    # LB0/a;
        .annotation build LB0/b;
        .end annotation
    .end param
    .annotation runtime Lr0/i;
    .end annotation

    new-instance p3, Ly0/e;

    invoke-direct {p3, p0, p1, p2}, Ly0/e;-><init>(Landroid/content/Context;Lz0/d;Ly0/g;)V

    return-object p3
.end method


# virtual methods
.method public abstract a(Lx0/c;)Lx0/e;
    .annotation runtime Lr0/a;
    .end annotation
.end method
