.class public Lwf/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lwf/b;


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwf/b$b;->c:Lwf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwf/b;Lwf/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwf/b$b;-><init>(Lwf/b;)V

    return-void
.end method
