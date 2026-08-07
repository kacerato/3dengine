.class public final synthetic LE1/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/h;


# instance fields
.field public final a:LE1/j;

.field public final b:LE1/q;


# direct methods
.method public constructor <init>(LE1/j;LE1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/d1;->a:LE1/j;

    iput-object p2, p0, LE1/d1;->b:LE1/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LE1/d1;->a:LE1/j;

    iget-object v1, p0, LE1/d1;->b:LE1/q;

    invoke-virtual {v0, v1}, LE1/j;->k0(LE1/q;)LQ1/k;

    return-void
.end method
