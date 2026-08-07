.class public final synthetic Lsg/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/a;


# instance fields
.field public final synthetic b:Lsg/v;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lsg/v;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/u;->b:Lsg/v;

    iput-object p2, p0, Lsg/u;->c:Ljava/lang/CharSequence;

    iput p3, p0, Lsg/u;->d:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsg/u;->b:Lsg/v;

    iget-object v1, p0, Lsg/u;->c:Ljava/lang/CharSequence;

    iget v2, p0, Lsg/u;->d:I

    invoke-static {v0, v1, v2}, Lsg/v;->a(Lsg/v;Ljava/lang/CharSequence;I)Lsg/r;

    move-result-object v0

    return-object v0
.end method
