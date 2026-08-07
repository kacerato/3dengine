.class public final Ldf/X1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lrf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Ldf/X1$c;


# direct methods
.method public constructor <init>(Ldf/X1$c;Lrf/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/h<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ldf/X1$c$a;->c:Ldf/X1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldf/X1$c$a;->b:Lrf/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldf/X1$c$a;->c:Ldf/X1$c;

    iget-object v1, p0, Ldf/X1$c$a;->b:Lrf/h;

    invoke-virtual {v0, v1}, Ldf/X1$c;->s(Lrf/h;)V

    return-void
.end method
