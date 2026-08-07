.class public La5/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/g;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La5/g;


# direct methods
.method public constructor <init>(La5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La5/g$a;->a:La5/g;

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

    iget-object v0, p0, La5/g$a;->a:La5/g;

    invoke-static {v0, p1}, La5/g;->o1(La5/g;I)V

    return-void
.end method
