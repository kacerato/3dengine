.class public final synthetic Lv1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lv1/u;


# direct methods
.method public synthetic constructor <init>(Lv1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/q;->a:Lv1/u;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, LQ1/l;

    iget-object v0, p0, Lv1/q;->a:Lv1/u;

    check-cast p1, Lv1/v;

    invoke-virtual {v0, p1, p2}, Lv1/u;->g0(Lv1/v;LQ1/l;)V

    return-void
.end method
