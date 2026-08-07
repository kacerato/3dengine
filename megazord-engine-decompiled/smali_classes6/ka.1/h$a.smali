.class public Lka/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lka/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lka/h;


# direct methods
.method public constructor <init>(Lka/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lka/h$a;->a:Lka/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LMc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    iget-object v0, p0, Lka/h$a;->a:Lka/h;

    invoke-static {v0, p1}, Lka/h;->a(Lka/h;LMc/h;)V

    return-void
.end method

.method public b(Loa/c;Loa/c;LMc/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "controllerRect",
            "touch"
        }
    .end annotation

    invoke-static {p3, p2, p1}, Lna/m;->e(LMc/h;Loa/c;Loa/c;)Z

    move-result p1

    return p1
.end method
