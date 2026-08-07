.class Lorg/hull/convexhull/Int3$1;
.super Lorg/hull/convexhull/IntRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hull/convexhull/Int3;->getRef(I)Lorg/hull/convexhull/IntRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hull/convexhull/Int3;

.field final synthetic val$coord:I


# direct methods
.method public constructor <init>(Lorg/hull/convexhull/Int3;I)V
    .locals 0

    iput-object p1, p0, Lorg/hull/convexhull/Int3$1;->this$0:Lorg/hull/convexhull/Int3;

    iput p2, p0, Lorg/hull/convexhull/Int3$1;->val$coord:I

    invoke-direct {p0}, Lorg/hull/convexhull/IntRef;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    iget-object v0, p0, Lorg/hull/convexhull/Int3$1;->this$0:Lorg/hull/convexhull/Int3;

    iget v1, p0, Lorg/hull/convexhull/Int3$1;->val$coord:I

    invoke-virtual {v0, v1}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    return v0
.end method

.method public set(I)V
    .locals 2

    iget-object v0, p0, Lorg/hull/convexhull/Int3$1;->this$0:Lorg/hull/convexhull/Int3;

    iget v1, p0, Lorg/hull/convexhull/Int3$1;->val$coord:I

    invoke-virtual {v0, v1, p1}, Lorg/hull/convexhull/Int3;->setCoord(II)V

    return-void
.end method
