.class public Lm4/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm4/a;->u1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lm4/a;


# direct methods
.method public constructor <init>(Lm4/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lm4/a$d;->b:Lm4/a;

    iput-object p2, p0, Lm4/a$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, Lm4/a$d;->b:Lm4/a;

    iget-object v0, p0, Lm4/a$d;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lm4/a;->q1(Lm4/a;Ljava/util/List;)V

    return-void
.end method
