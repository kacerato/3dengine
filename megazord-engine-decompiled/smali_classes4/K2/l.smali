.class public final synthetic LK2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:LK2/t;


# direct methods
.method public synthetic constructor <init>(LK2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/l;->a:LK2/t;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, LK2/l;->a:LK2/t;

    invoke-static {v0}, LK2/t;->h(LK2/t;)V

    return-void
.end method
