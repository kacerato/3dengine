.class public Ln7/a$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ln7/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln7/a$a;->b:Ln7/a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lo7/b;

    invoke-direct {p1}, Lo7/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lo7/a;

    invoke-direct {p1}, Lo7/a;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
