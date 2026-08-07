.class public LD0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/a;->b(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD0/a;


# direct methods
.method public constructor <init>(LD0/a;)V
    .locals 0

    iput-object p1, p0, LD0/a$b;->b:LD0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LD0/a$b;->b:LD0/a;

    invoke-static {v0}, LD0/a;->a(LD0/a;)V

    return-void
.end method
