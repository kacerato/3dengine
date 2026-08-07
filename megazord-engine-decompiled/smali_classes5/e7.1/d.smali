.class public Le7/d;
.super Lw7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw7/a<",
        "Le7/b;",
        "Le7/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "SuggestionsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "elements",
            "adapterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le7/b;",
            ">;",
            "Le7/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Le7/d$a;

    invoke-direct {v0, p1, p3}, Le7/d$a;-><init>(Landroid/content/Context;Le7/a;)V

    invoke-direct {p0, p1, p2, v0}, Lw7/a;-><init>(Landroid/content/Context;Ljava/util/List;Lw7/a$a;)V

    return-void
.end method
