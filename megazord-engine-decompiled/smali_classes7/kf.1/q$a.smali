.class public final Lkf/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf/q$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXe/o<",
        "Lkf/q$f;",
        "LTe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/J$c;


# direct methods
.method public constructor <init>(LTe/J$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf/q$a;->b:LTe/J$c;

    return-void
.end method


# virtual methods
.method public a(Lkf/q$f;)LTe/c;
    .locals 1

    new-instance v0, Lkf/q$a$a;

    invoke-direct {v0, p0, p1}, Lkf/q$a$a;-><init>(Lkf/q$a;Lkf/q$f;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lkf/q$f;

    invoke-virtual {p0, p1}, Lkf/q$a;->a(Lkf/q$f;)LTe/c;

    move-result-object p1

    return-object p1
.end method
