.class public Li7/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li7/a$b;


# direct methods
.method public constructor <init>(Li7/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Li7/a$b$a;->a:Li7/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    const/high16 v0, 0x40600000    # 3.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lgd/b;->w0(F)F

    move-result p1

    return p1
.end method
