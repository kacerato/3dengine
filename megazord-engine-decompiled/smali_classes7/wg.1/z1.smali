.class public final Lwg/z1;
.super LQf/a;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg/z1$a;
    }
.end annotation


# static fields
.field public static final c:Lwg/z1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Z
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwg/z1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwg/z1$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lwg/z1;->c:Lwg/z1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lwg/z1;->c:Lwg/z1$a;

    invoke-direct {p0, v0}, LQf/a;-><init>(LQf/j$c;)V

    return-void
.end method
