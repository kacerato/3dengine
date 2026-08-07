.class public Lyb/e$a$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lorg/ITsMagic/Atlas/g;

.field public final synthetic b:Lyb/e$a$m;


# direct methods
.method public constructor <init>(Lyb/e$a$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$a;->b:Lyb/e$a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/ITsMagic/Atlas/BakeOptions;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ITsMagic/Atlas/BakeOptions;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LW5/b;

    new-instance v2, Lyb/e$a$m$a$b;

    invoke-direct {v2, p0, p1}, Lyb/e$a$m$a$b;-><init>(Lyb/e$a$m$a;Lorg/ITsMagic/Atlas/BakeOptions;)V

    const-string v3, "Pixels per meter"

    sget-object v4, LW5/b$a;->SLFloat:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW5/b;

    new-instance v2, Lyb/e$a$m$a$c;

    invoke-direct {v2, p0, p1}, Lyb/e$a$m$a$c;-><init>(Lyb/e$a$m$a;Lorg/ITsMagic/Atlas/BakeOptions;)V

    const-string p1, "Padding"

    sget-object v3, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {v1, v2, p1, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {p1}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    new-instance v0, Lyb/e$a$m$a$a;

    invoke-direct {v0, p0, p1}, Lyb/e$a$m$a$a;-><init>(Lyb/e$a$m$a;Lorg/ITsMagic/Atlas/BakeOptions;)V

    const-string p1, "Build atlas"

    const/16 v1, 0xc8

    const/16 v2, 0x78

    invoke-static {p1, v1, v2, v0}, La5/e;->w1(Ljava/lang/String;IILa5/f;)La5/e;

    return-void
.end method
