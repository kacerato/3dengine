.class public final Lgf/D1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/D1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lgf/D1$a;


# direct methods
.method public constructor <init>(Lgf/D1$a;)V
    .locals 0

    iput-object p1, p0, Lgf/D1$a$a;->b:Lgf/D1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lgf/D1$a$a;->b:Lgf/D1$a;

    iget-object v0, v0, Lgf/D1$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method
