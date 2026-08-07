.class public final synthetic Lsg/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/L;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsg/L;->b:Ljava/lang/CharSequence;

    check-cast p1, Lng/l;

    invoke-static {v0, p1}, Lsg/P;->g3(Ljava/lang/CharSequence;Lng/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
