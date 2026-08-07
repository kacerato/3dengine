.class public Lh8/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/c;->g(Z)Lh8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh8/c;


# direct methods
.method public constructor <init>(Lh8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh8/c$h;->a:Lh8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    iget-object v0, p0, Lh8/c$h;->a:Lh8/c;

    invoke-virtual {v0, p1}, Lh8/c;->y(I)V

    return-void
.end method
