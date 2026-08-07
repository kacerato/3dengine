.class public final synthetic LE1/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LE1/N;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LE1/N;->a:Z

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p1, v0}, LB1/A;->E0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
