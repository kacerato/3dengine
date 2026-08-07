.class public final synthetic Lqh/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/p;


# instance fields
.field public final synthetic b:Lqh/v;


# direct methods
.method public synthetic constructor <init>(Lqh/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/t;->b:Lqh/v;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqh/t;->b:Lqh/v;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, p1, p2}, Lqh/v;->i0(Lqh/v;IF)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
