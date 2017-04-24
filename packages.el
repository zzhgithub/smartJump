;;; packages.el --- smartJump layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 黑孩儿/周子豪 <zhouzihao@zbj.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `smartJump-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `smartJump/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `smartJump/pre-init-PACKAGE' and/or
;;   `smartJump/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst smartJump-packages
  '(highlight-symbol)
)

(defun smartJump/init-highlight-symbol()
  (use-package highlight-symbol
    :defer t
    :init
    (spacemacs/set-leader-keys ",n" 'highlight-symbol-next)
    (spacemacs/set-leader-keys ",p" 'highlight-symbol-prev)
    (spacemacs/set-leader-keys ",r" 'highlight-symbol-query-replace)
    (spacemacs/set-leader-keys ",," 'highlight-symbol)
    (spacemacs/set-leader-keys ",." 'highlight-symbol-remove-all)
    ))

;;; packages.el ends here
