.class public LWg/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LVg/a;

.field public final b:Z

.field public final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;ZLVg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWg/h$b;->c:Ljava/util/concurrent/ExecutorService;

    iput-boolean p2, p0, LWg/h$b;->b:Z

    iput-object p3, p0, LWg/h$b;->a:LVg/a;

    return-void
.end method

.method public static synthetic a(LWg/h$b;)LVg/a;
    .locals 0

    iget-object p0, p0, LWg/h$b;->a:LVg/a;

    return-object p0
.end method

.method public static synthetic b(LWg/h$b;)Z
    .locals 0

    iget-boolean p0, p0, LWg/h$b;->b:Z

    return p0
.end method

.method public static synthetic c(LWg/h$b;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, LWg/h$b;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
