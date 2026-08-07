.class public final Lcf/w;
.super LTe/c;
.source "SourceFile"


# instance fields
.field public final b:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/w;->b:LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 1

    iget-object v0, p0, Lcf/w;->b:LTe/i;

    invoke-interface {v0, p1}, LTe/i;->b(LTe/f;)V

    return-void
.end method
