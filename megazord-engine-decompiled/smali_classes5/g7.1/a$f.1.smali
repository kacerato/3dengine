.class public Lg7/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/a$F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->d2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg7/a;


# direct methods
.method public constructor <init>(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$f;->a:Lg7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget-object v0, p0, Lg7/a$f;->a:Lg7/a;

    invoke-static {v0}, Lg7/a;->I1(Lg7/a;)I

    move-result v0

    return v0
.end method
