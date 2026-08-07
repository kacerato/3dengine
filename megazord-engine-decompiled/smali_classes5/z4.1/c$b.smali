.class public Lz4/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lo8/b;->h:Lt8/f;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lz4/c$b$a;

    invoke-direct {v2, p0}, Lz4/c$b$a;-><init>(Lz4/c$b;)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method
