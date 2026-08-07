.class public final Ls0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/g;
.implements Lr0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls0/g<",
        "TT;>;",
        "Lr0/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Ls0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls0/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls0/j;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ls0/j;->b:Ls0/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/j;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ls0/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ls0/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ls0/j;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Ls0/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ls0/j;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ls0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ls0/g<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ls0/j;->c()Ls0/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ls0/j;

    invoke-direct {v0, p0}, Ls0/j;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c()Ls0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ls0/j<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ls0/j;->b:Ls0/j;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ls0/j;->a:Ljava/lang/Object;

    return-object v0
.end method
