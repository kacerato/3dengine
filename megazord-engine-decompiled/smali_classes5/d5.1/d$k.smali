.class public Ld5/d$k;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ld5/d$r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld5/d;


# direct methods
.method public constructor <init>(Ld5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld5/d$k;->b:Ld5/d;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ld5/d$k$a;

    const-string v0, "help"

    const-string v1, "show all commands"

    invoke-direct {p1, p0, v0, v1}, Ld5/d$k$a;-><init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/d$k$b;

    const-string v0, "clear"

    const-string v1, "clear terminal"

    invoke-direct {p1, p0, v0, v1}, Ld5/d$k$b;-><init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/d$k$c;

    const-string v0, "shell"

    const-string v1, "open linux system shell"

    invoke-direct {p1, p0, v0, v1}, Ld5/d$k$c;-><init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p1, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ld5/d$k$d;

    const-string v0, "start-anr-watch-dog"

    const-string v1, "force crash itsmagic when ANR occurs."

    invoke-direct {p1, p0, v0, v1}, Ld5/d$k$d;-><init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/d$k$e;

    const-string v0, "start-anr-watch-dog-ui"

    invoke-direct {p1, p0, v0, v1}, Ld5/d$k$e;-><init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
