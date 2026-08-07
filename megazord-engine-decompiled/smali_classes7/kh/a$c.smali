.class public final Lkh/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lkh/a;


# direct methods
.method public constructor <init>(Lkh/a;)V
    .locals 0

    iput-object p1, p0, Lkh/a$c;->b:Lkh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lkh/a$c;->b:Lkh/a;

    invoke-virtual {v0}, Lkh/a;->cancel()V

    return-void
.end method
