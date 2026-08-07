.class public final synthetic Lsg/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Leg/l;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/CharSequence;Leg/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsg/W;->b:I

    iput-object p2, p0, Lsg/W;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Lsg/W;->d:Leg/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lsg/W;->b:I

    iget-object v1, p0, Lsg/W;->c:Ljava/lang/CharSequence;

    iget-object v2, p0, Lsg/W;->d:Leg/l;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lsg/X;->J6(ILjava/lang/CharSequence;Leg/l;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
