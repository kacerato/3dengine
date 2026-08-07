.class public Lh7/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c;->d2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/c;


# direct methods
.method public constructor <init>(Lh7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$i;->a:Lh7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lh7/c$i;->a:Lh7/c;

    invoke-static {p1}, Lh7/c;->x1(Lh7/c;)V

    return-void
.end method
