.class public Lf5/a$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/a;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf5/a;


# direct methods
.method public constructor <init>(Lf5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lf5/a$s;->a:Lf5/a;

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

    iget-object p1, p0, Lf5/a$s;->a:Lf5/a;

    invoke-static {p1}, Lf5/a;->u1(Lf5/a;)V

    return-void
.end method
